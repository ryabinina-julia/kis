import Vue from 'vue'
import Vuex from 'vuex'
import axios from "axios"

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    msg: 'Таблица функций',
    OptionList: [
      {"optionName":"ENABLE_CLEAR",
        "optionValue":"1"},
      {"optionName":"SKPI_DEEP_DAYS",
        "optionValue":"1"},
      {"optionName":"KSAU_DEEP_DAYS",
        "optionValue":"1"},
      {"optionName":"PPSS_DEEP_DAYS",
        "optionValue":"1"},
      {"optionName":"TDMA_DEEP_DAYS",
        "optionValue":"4"},
      {"optionName":"NO_VAG_DEEP_HOURS",
        "optionValue":"1"},
      {"optionName":"OUT_DAYS",
        "optionValue":"1"},
      {"optionName":"test",
        "optionValue":"1"}
    ]
  },
  getters: {
    getMsg (state){
      return state.msg
    },
    getOptionList(state)
    {
      return state.OptionList
    }
  },
  mutations: {
    setOptionList(state, OptionList){
      state.OptionList = OptionList
    }
  },
  actions: {
    async loadOptionList(context){
      try{
        const url = '/kis/sys_options'
        const response = await axios.get(url)
        const results = response.data
        context.commit('setOptionList', results)
      } catch(err){
        if (err.response){
          console.log("Server Error:", err)
        } else if (err.request){
          console.log("Network Error", err)
        } else {
          console.log("Client Error",err)
        }
      }
    }
  },
  modules: {
  }
})
